**free

ctl-opt dftactgrp(*no);

dcl-pi P5104;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1076.rpgleinc'
/copy 'qrpgleref/P972.rpgleinc'
/copy 'qrpgleref/P2050.rpgleinc'

dcl-ds T1639 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1639 FROM T1639 LIMIT 1;

theCharVar = 'Hello from P5104';
dsply theCharVar;
callp localProc();
P1076();
P972();
P2050();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5104 in the procedure';
end-proc;