**free

ctl-opt dftactgrp(*no);

dcl-pi P2149;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1781.rpgleinc'
/copy 'qrpgleref/P1952.rpgleinc'
/copy 'qrpgleref/P1077.rpgleinc'

dcl-ds T663 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T663 FROM T663 LIMIT 1;

theCharVar = 'Hello from P2149';
dsply theCharVar;
callp localProc();
P1781();
P1952();
P1077();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2149 in the procedure';
end-proc;