**free

ctl-opt dftactgrp(*no);

dcl-pi P2200;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2090.rpgleinc'
/copy 'qrpgleref/P1038.rpgleinc'
/copy 'qrpgleref/P1830.rpgleinc'

dcl-ds theTable extname('T1739') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1739 LIMIT 1;

theCharVar = 'Hello from P2200';
dsply theCharVar;
callp localProc();
P2090();
P1038();
P1830();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2200 in the procedure';
end-proc;