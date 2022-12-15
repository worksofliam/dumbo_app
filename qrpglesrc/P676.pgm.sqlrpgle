**free

ctl-opt dftactgrp(*no);

dcl-pi P676;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P456.rpgleinc'
/copy 'qrpgleref/P90.rpgleinc'
/copy 'qrpgleref/P566.rpgleinc'

dcl-ds T199 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T199 FROM T199 LIMIT 1;

theCharVar = 'Hello from P676';
dsply theCharVar;
callp localProc();
P456();
P90();
P566();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P676 in the procedure';
end-proc;