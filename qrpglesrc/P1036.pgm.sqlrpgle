**free

ctl-opt dftactgrp(*no);

dcl-pi P1036;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P587.rpgleinc'
/copy 'qrpgleref/P60.rpgleinc'
/copy 'qrpgleref/P993.rpgleinc'

dcl-ds T83 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T83 FROM T83 LIMIT 1;

theCharVar = 'Hello from P1036';
dsply theCharVar;
callp localProc();
P587();
P60();
P993();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1036 in the procedure';
end-proc;