**free

ctl-opt dftactgrp(*no);

dcl-pi P36;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P33.rpgleinc'

dcl-ds T375 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T375 FROM T375 LIMIT 1;

theCharVar = 'Hello from P36';
dsply theCharVar;
P0();
P17();
P33();
return;