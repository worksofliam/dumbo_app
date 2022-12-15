**free

ctl-opt dftactgrp(*no);

dcl-pi P3295;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P840.rpgleinc'
/copy 'qrpgleref/P2236.rpgleinc'
/copy 'qrpgleref/P1550.rpgleinc'

dcl-ds T474 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T474 FROM T474 LIMIT 1;

theCharVar = 'Hello from P3295';
dsply theCharVar;
callp localProc();
P840();
P2236();
P1550();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3295 in the procedure';
end-proc;