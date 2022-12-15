**free

ctl-opt dftactgrp(*no);

dcl-pi P2037;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1269.rpgleinc'
/copy 'qrpgleref/P484.rpgleinc'
/copy 'qrpgleref/P1404.rpgleinc'

dcl-ds theTable extname('T316') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T316 LIMIT 1;

theCharVar = 'Hello from P2037';
dsply theCharVar;
callp localProc();
P1269();
P484();
P1404();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2037 in the procedure';
end-proc;