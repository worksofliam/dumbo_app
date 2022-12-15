**free

ctl-opt dftactgrp(*no);

dcl-pi P3054;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1326.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'
/copy 'qrpgleref/P1601.rpgleinc'

dcl-ds T1083 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1083 FROM T1083 LIMIT 1;

theCharVar = 'Hello from P3054';
dsply theCharVar;
callp localProc();
P1326();
P18();
P1601();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3054 in the procedure';
end-proc;