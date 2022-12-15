**free

ctl-opt dftactgrp(*no);

dcl-pi P2872;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P962.rpgleinc'
/copy 'qrpgleref/P484.rpgleinc'
/copy 'qrpgleref/P2450.rpgleinc'

dcl-ds T454 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T454 FROM T454 LIMIT 1;

theCharVar = 'Hello from P2872';
dsply theCharVar;
callp localProc();
P962();
P484();
P2450();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2872 in the procedure';
end-proc;