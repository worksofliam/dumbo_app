**free

ctl-opt dftactgrp(*no);

dcl-pi P3189;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2620.rpgleinc'
/copy 'qrpgleref/P957.rpgleinc'
/copy 'qrpgleref/P484.rpgleinc'

dcl-ds T1047 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1047 FROM T1047 LIMIT 1;

theCharVar = 'Hello from P3189';
dsply theCharVar;
callp localProc();
P2620();
P957();
P484();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3189 in the procedure';
end-proc;