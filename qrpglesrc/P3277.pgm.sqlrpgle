**free

ctl-opt dftactgrp(*no);

dcl-pi P3277;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1302.rpgleinc'
/copy 'qrpgleref/P50.rpgleinc'
/copy 'qrpgleref/P2742.rpgleinc'

dcl-ds T459 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T459 FROM T459 LIMIT 1;

theCharVar = 'Hello from P3277';
dsply theCharVar;
callp localProc();
P1302();
P50();
P2742();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3277 in the procedure';
end-proc;