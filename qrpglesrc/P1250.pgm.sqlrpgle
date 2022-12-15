**free

ctl-opt dftactgrp(*no);

dcl-pi P1250;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P934.rpgleinc'
/copy 'qrpgleref/P610.rpgleinc'
/copy 'qrpgleref/P449.rpgleinc'

dcl-ds T445 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T445 FROM T445 LIMIT 1;

theCharVar = 'Hello from P1250';
dsply theCharVar;
callp localProc();
P934();
P610();
P449();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1250 in the procedure';
end-proc;