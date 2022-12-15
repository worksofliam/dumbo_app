**free

ctl-opt dftactgrp(*no);

dcl-pi P1850;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P818.rpgleinc'
/copy 'qrpgleref/P768.rpgleinc'
/copy 'qrpgleref/P264.rpgleinc'

dcl-ds T1081 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1081 FROM T1081 LIMIT 1;

theCharVar = 'Hello from P1850';
dsply theCharVar;
callp localProc();
P818();
P768();
P264();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1850 in the procedure';
end-proc;