**free

ctl-opt dftactgrp(*no);

dcl-pi P1191;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P824.rpgleinc'
/copy 'qrpgleref/P684.rpgleinc'
/copy 'qrpgleref/P440.rpgleinc'

dcl-ds T157 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T157 FROM T157 LIMIT 1;

theCharVar = 'Hello from P1191';
dsply theCharVar;
callp localProc();
P824();
P684();
P440();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1191 in the procedure';
end-proc;