**free

ctl-opt dftactgrp(*no);

dcl-pi P1418;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P847.rpgleinc'
/copy 'qrpgleref/P971.rpgleinc'
/copy 'qrpgleref/P1009.rpgleinc'

dcl-ds T58 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T58 FROM T58 LIMIT 1;

theCharVar = 'Hello from P1418';
dsply theCharVar;
callp localProc();
P847();
P971();
P1009();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1418 in the procedure';
end-proc;