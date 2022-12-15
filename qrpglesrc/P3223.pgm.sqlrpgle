**free

ctl-opt dftactgrp(*no);

dcl-pi P3223;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2160.rpgleinc'
/copy 'qrpgleref/P1778.rpgleinc'
/copy 'qrpgleref/P770.rpgleinc'

dcl-ds T1304 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1304 FROM T1304 LIMIT 1;

theCharVar = 'Hello from P3223';
dsply theCharVar;
callp localProc();
P2160();
P1778();
P770();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3223 in the procedure';
end-proc;