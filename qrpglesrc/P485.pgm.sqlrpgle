**free

ctl-opt dftactgrp(*no);

dcl-pi P485;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P392.rpgleinc'
/copy 'qrpgleref/P354.rpgleinc'
/copy 'qrpgleref/P97.rpgleinc'

dcl-ds theTable extname('T227') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T227 LIMIT 1;

theCharVar = 'Hello from P485';
dsply theCharVar;
callp localProc();
P392();
P354();
P97();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P485 in the procedure';
end-proc;