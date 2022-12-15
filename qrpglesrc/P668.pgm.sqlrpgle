**free

ctl-opt dftactgrp(*no);

dcl-pi P668;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P666.rpgleinc'
/copy 'qrpgleref/P632.rpgleinc'
/copy 'qrpgleref/P215.rpgleinc'

dcl-ds T905 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T905 FROM T905 LIMIT 1;

theCharVar = 'Hello from P668';
dsply theCharVar;
callp localProc();
P666();
P632();
P215();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P668 in the procedure';
end-proc;