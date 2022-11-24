namespace Presentacion.Reportes
{
    partial class Frm_rep_parqueadero
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource1 = new Microsoft.Reporting.WinForms.ReportDataSource();
            this.reportViewer1 = new Microsoft.Reporting.WinForms.ReportViewer();
            this.dS_Reportes = new Presentacion.Reportes.DS_Reportes();
            this.uSPListadoParqueaderoBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.uSP_Listado_ParqueaderoTableAdapter = new Presentacion.Reportes.DS_ReportesTableAdapters.USP_Listado_ParqueaderoTableAdapter();
            this.txt_p3 = new System.Windows.Forms.TextBox();
            this.contextMenuStrip1 = new System.Windows.Forms.ContextMenuStrip(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.dS_Reportes)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.uSPListadoParqueaderoBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // reportViewer1
            // 
            this.reportViewer1.Dock = System.Windows.Forms.DockStyle.Fill;
            reportDataSource1.Name = "DataSet1";
            reportDataSource1.Value = this.uSPListadoParqueaderoBindingSource;
            this.reportViewer1.LocalReport.DataSources.Add(reportDataSource1);
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "Presentacion.Reportes.Rpt_Listado_Parqueadero.rdlc";
            this.reportViewer1.Location = new System.Drawing.Point(0, 0);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.ServerReport.BearerToken = null;
            this.reportViewer1.Size = new System.Drawing.Size(1048, 455);
            this.reportViewer1.TabIndex = 0;
            // 
            // dS_Reportes
            // 
            this.dS_Reportes.DataSetName = "DS_Reportes";
            this.dS_Reportes.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // uSPListadoParqueaderoBindingSource
            // 
            this.uSPListadoParqueaderoBindingSource.DataMember = "USP_Listado_Parqueadero";
            this.uSPListadoParqueaderoBindingSource.DataSource = this.dS_Reportes;
            // 
            // uSP_Listado_ParqueaderoTableAdapter
            // 
            this.uSP_Listado_ParqueaderoTableAdapter.ClearBeforeFill = true;
            // 
            // txt_p3
            // 
            this.txt_p3.Location = new System.Drawing.Point(54, 45);
            this.txt_p3.Name = "txt_p3";
            this.txt_p3.Size = new System.Drawing.Size(100, 20);
            this.txt_p3.TabIndex = 1;
            this.txt_p3.Visible = false;
            // 
            // contextMenuStrip1
            // 
            this.contextMenuStrip1.Name = "contextMenuStrip1";
            this.contextMenuStrip1.Size = new System.Drawing.Size(61, 4);
            // 
            // Frm_rep_parqueadero
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1048, 455);
            this.Controls.Add(this.txt_p3);
            this.Controls.Add(this.reportViewer1);
            this.Name = "Frm_rep_parqueadero";
            this.Text = "Frm_rep_parqueadero";
            this.Load += new System.EventHandler(this.Frm_rep_parqueadero_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dS_Reportes)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.uSPListadoParqueaderoBindingSource)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
        private System.Windows.Forms.BindingSource uSPListadoParqueaderoBindingSource;
        private DS_Reportes dS_Reportes;
        private DS_ReportesTableAdapters.USP_Listado_ParqueaderoTableAdapter uSP_Listado_ParqueaderoTableAdapter;
        private System.Windows.Forms.TextBox txt_p3;
        private System.Windows.Forms.ContextMenuStrip contextMenuStrip1;
    }
}