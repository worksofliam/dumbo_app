**free

ctl-opt dftactgrp(*no);

dcl-pi P5156;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2045.rpgleinc'
/copy 'qrpgleref/P3713.rpgleinc'
/copy 'qrpgleref/P3215.rpgleinc'

dcl-ds T373 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T373 FROM T373 LIMIT 1;

theCharVar = 'Hello from P5156';
dsply theCharVar;
callp localProc();
P2045();
P3713();
P3215();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5156 in the procedure';
end-proc;