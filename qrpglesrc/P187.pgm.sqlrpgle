**free

ctl-opt dftactgrp(*no);

dcl-pi P187;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P116.rpgleinc'
/copy 'qrpgleref/P77.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'

dcl-ds T214 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T214 FROM T214 LIMIT 1;

theCharVar = 'Hello from P187';
dsply theCharVar;
callp localProc();
P116();
P77();
P6();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P187 in the procedure';
end-proc;