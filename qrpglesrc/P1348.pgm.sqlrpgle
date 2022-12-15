**free

ctl-opt dftactgrp(*no);

dcl-pi P1348;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P894.rpgleinc'
/copy 'qrpgleref/P166.rpgleinc'
/copy 'qrpgleref/P995.rpgleinc'

dcl-ds T63 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T63 FROM T63 LIMIT 1;

theCharVar = 'Hello from P1348';
dsply theCharVar;
callp localProc();
P894();
P166();
P995();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1348 in the procedure';
end-proc;