**free

ctl-opt dftactgrp(*no);

dcl-pi P1152;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P199.rpgleinc'
/copy 'qrpgleref/P582.rpgleinc'
/copy 'qrpgleref/P954.rpgleinc'

dcl-ds T368 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T368 FROM T368 LIMIT 1;

theCharVar = 'Hello from P1152';
dsply theCharVar;
callp localProc();
P199();
P582();
P954();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1152 in the procedure';
end-proc;