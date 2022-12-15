**free

ctl-opt dftactgrp(*no);

dcl-pi P905;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P680.rpgleinc'
/copy 'qrpgleref/P394.rpgleinc'
/copy 'qrpgleref/P820.rpgleinc'

dcl-ds theTable extname('T1643') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1643 LIMIT 1;

theCharVar = 'Hello from P905';
dsply theCharVar;
callp localProc();
P680();
P394();
P820();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P905 in the procedure';
end-proc;