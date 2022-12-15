**free

ctl-opt dftactgrp(*no);

dcl-pi P1207;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P202.rpgleinc'
/copy 'qrpgleref/P1073.rpgleinc'
/copy 'qrpgleref/P94.rpgleinc'

dcl-ds theTable extname('T900') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T900 LIMIT 1;

theCharVar = 'Hello from P1207';
dsply theCharVar;
callp localProc();
P202();
P1073();
P94();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1207 in the procedure';
end-proc;