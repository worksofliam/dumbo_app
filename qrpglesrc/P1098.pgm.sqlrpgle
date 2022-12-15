**free

ctl-opt dftactgrp(*no);

dcl-pi P1098;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P211.rpgleinc'
/copy 'qrpgleref/P475.rpgleinc'
/copy 'qrpgleref/P420.rpgleinc'

dcl-ds theTable extname('T770') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T770 LIMIT 1;

theCharVar = 'Hello from P1098';
dsply theCharVar;
callp localProc();
P211();
P475();
P420();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1098 in the procedure';
end-proc;