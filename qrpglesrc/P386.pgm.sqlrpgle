**free

ctl-opt dftactgrp(*no);

dcl-pi P386;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P265.rpgleinc'
/copy 'qrpgleref/P324.rpgleinc'
/copy 'qrpgleref/P16.rpgleinc'

dcl-ds theTable extname('T773') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T773 LIMIT 1;

theCharVar = 'Hello from P386';
dsply theCharVar;
P265();
P324();
P16();
return;