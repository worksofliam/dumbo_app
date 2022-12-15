**free

ctl-opt dftactgrp(*no);

dcl-pi P112;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P67.rpgleinc'
/copy 'qrpgleref/P16.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'

dcl-ds theTable extname('T550') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T550 LIMIT 1;

theCharVar = 'Hello from P112';
dsply theCharVar;
callp localProc();
P67();
P16();
P9();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P112 in the procedure';
end-proc;