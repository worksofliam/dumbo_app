**free

ctl-opt dftactgrp(*no);

dcl-pi P3090;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P472.rpgleinc'
/copy 'qrpgleref/P797.rpgleinc'
/copy 'qrpgleref/P1318.rpgleinc'

dcl-ds T1557 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1557 FROM T1557 LIMIT 1;

theCharVar = 'Hello from P3090';
dsply theCharVar;
callp localProc();
P472();
P797();
P1318();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3090 in the procedure';
end-proc;