**free

ctl-opt dftactgrp(*no);

dcl-pi P3659;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1302.rpgleinc'
/copy 'qrpgleref/P497.rpgleinc'
/copy 'qrpgleref/P806.rpgleinc'

dcl-ds theTable extname('T749') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T749 LIMIT 1;

theCharVar = 'Hello from P3659';
dsply theCharVar;
P1302();
P497();
P806();
return;