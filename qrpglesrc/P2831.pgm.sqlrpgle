**free

ctl-opt dftactgrp(*no);

dcl-pi P2831;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2711.rpgleinc'
/copy 'qrpgleref/P1483.rpgleinc'
/copy 'qrpgleref/P301.rpgleinc'

dcl-ds T682 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T682 FROM T682 LIMIT 1;

theCharVar = 'Hello from P2831';
dsply theCharVar;
callp localProc();
P2711();
P1483();
P301();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2831 in the procedure';
end-proc;