**free

ctl-opt dftactgrp(*no);

dcl-pi P252;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P37.rpgleinc'
/copy 'qrpgleref/P143.rpgleinc'
/copy 'qrpgleref/P240.rpgleinc'

dcl-ds theTable extname('T1182') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1182 LIMIT 1;

theCharVar = 'Hello from P252';
dsply theCharVar;
callp localProc();
P37();
P143();
P240();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P252 in the procedure';
end-proc;