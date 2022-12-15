**free

ctl-opt dftactgrp(*no);

dcl-pi P359;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P286.rpgleinc'
/copy 'qrpgleref/P52.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'

dcl-ds T1809 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1809 FROM T1809 LIMIT 1;

theCharVar = 'Hello from P359';
dsply theCharVar;
callp localProc();
P286();
P52();
P1();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P359 in the procedure';
end-proc;