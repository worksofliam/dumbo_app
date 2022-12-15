**free

ctl-opt dftactgrp(*no);

dcl-pi P3579;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3265.rpgleinc'
/copy 'qrpgleref/P287.rpgleinc'
/copy 'qrpgleref/P1900.rpgleinc'

dcl-ds T491 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T491 FROM T491 LIMIT 1;

theCharVar = 'Hello from P3579';
dsply theCharVar;
callp localProc();
P3265();
P287();
P1900();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3579 in the procedure';
end-proc;