**free

ctl-opt dftactgrp(*no);

dcl-pi P688;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P552.rpgleinc'
/copy 'qrpgleref/P540.rpgleinc'
/copy 'qrpgleref/P537.rpgleinc'

dcl-ds theTable extname('T117') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T117 LIMIT 1;

theCharVar = 'Hello from P688';
dsply theCharVar;
callp localProc();
P552();
P540();
P537();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P688 in the procedure';
end-proc;