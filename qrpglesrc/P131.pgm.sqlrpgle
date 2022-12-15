**free

ctl-opt dftactgrp(*no);

dcl-pi P131;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P73.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P117.rpgleinc'

dcl-ds T1214 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1214 FROM T1214 LIMIT 1;

theCharVar = 'Hello from P131';
dsply theCharVar;
callp localProc();
P73();
P13();
P117();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P131 in the procedure';
end-proc;