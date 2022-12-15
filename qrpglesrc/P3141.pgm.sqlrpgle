**free

ctl-opt dftactgrp(*no);

dcl-pi P3141;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2960.rpgleinc'
/copy 'qrpgleref/P195.rpgleinc'
/copy 'qrpgleref/P950.rpgleinc'

dcl-ds theTable extname('T761') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T761 LIMIT 1;

theCharVar = 'Hello from P3141';
dsply theCharVar;
callp localProc();
P2960();
P195();
P950();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3141 in the procedure';
end-proc;