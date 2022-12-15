**free

ctl-opt dftactgrp(*no);

dcl-pi P242;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P52.rpgleinc'
/copy 'qrpgleref/P159.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'

dcl-ds T1206 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1206 FROM T1206 LIMIT 1;

theCharVar = 'Hello from P242';
dsply theCharVar;
callp localProc();
P52();
P159();
P0();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P242 in the procedure';
end-proc;