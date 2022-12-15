**free

ctl-opt dftactgrp(*no);

dcl-pi P520;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P372.rpgleinc'
/copy 'qrpgleref/P381.rpgleinc'
/copy 'qrpgleref/P386.rpgleinc'

dcl-ds theTable extname('T341') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T341 LIMIT 1;

theCharVar = 'Hello from P520';
dsply theCharVar;
P372();
P381();
P386();
return;