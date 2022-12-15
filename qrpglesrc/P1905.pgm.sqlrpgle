**free

ctl-opt dftactgrp(*no);

dcl-pi P1905;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P25.rpgleinc'
/copy 'qrpgleref/P972.rpgleinc'
/copy 'qrpgleref/P1754.rpgleinc'

dcl-ds T1106 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1106 FROM T1106 LIMIT 1;

theCharVar = 'Hello from P1905';
dsply theCharVar;
callp localProc();
P25();
P972();
P1754();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1905 in the procedure';
end-proc;