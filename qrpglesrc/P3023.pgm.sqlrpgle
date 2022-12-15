**free

ctl-opt dftactgrp(*no);

dcl-pi P3023;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2706.rpgleinc'
/copy 'qrpgleref/P2082.rpgleinc'
/copy 'qrpgleref/P273.rpgleinc'

dcl-ds T28 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T28 FROM T28 LIMIT 1;

theCharVar = 'Hello from P3023';
dsply theCharVar;
callp localProc();
P2706();
P2082();
P273();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3023 in the procedure';
end-proc;