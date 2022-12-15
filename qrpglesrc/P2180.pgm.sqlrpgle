**free

ctl-opt dftactgrp(*no);

dcl-pi P2180;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P544.rpgleinc'
/copy 'qrpgleref/P2012.rpgleinc'
/copy 'qrpgleref/P1159.rpgleinc'

dcl-ds T1852 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1852 FROM T1852 LIMIT 1;

theCharVar = 'Hello from P2180';
dsply theCharVar;
callp localProc();
P544();
P2012();
P1159();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2180 in the procedure';
end-proc;