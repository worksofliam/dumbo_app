**free

ctl-opt dftactgrp(*no);

dcl-pi P1080;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P373.rpgleinc'
/copy 'qrpgleref/P982.rpgleinc'
/copy 'qrpgleref/P48.rpgleinc'

dcl-ds theTable extname('T773') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T773 LIMIT 1;

theCharVar = 'Hello from P1080';
dsply theCharVar;
P373();
P982();
P48();
return;