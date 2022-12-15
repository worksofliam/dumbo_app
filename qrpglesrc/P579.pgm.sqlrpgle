**free

ctl-opt dftactgrp(*no);

dcl-pi P579;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P232.rpgleinc'
/copy 'qrpgleref/P388.rpgleinc'
/copy 'qrpgleref/P351.rpgleinc'

dcl-ds theTable extname('T226') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T226 LIMIT 1;

theCharVar = 'Hello from P579';
dsply theCharVar;
callp localProc();
P232();
P388();
P351();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P579 in the procedure';
end-proc;