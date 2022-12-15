**free

ctl-opt dftactgrp(*no);

dcl-pi P5499;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3345.rpgleinc'
/copy 'qrpgleref/P802.rpgleinc'
/copy 'qrpgleref/P1609.rpgleinc'

dcl-ds T63 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T63 FROM T63 LIMIT 1;

theCharVar = 'Hello from P5499';
dsply theCharVar;
callp localProc();
P3345();
P802();
P1609();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5499 in the procedure';
end-proc;