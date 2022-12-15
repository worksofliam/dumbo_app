**free

ctl-opt dftactgrp(*no);

dcl-pi P750;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P668.rpgleinc'
/copy 'qrpgleref/P624.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'

dcl-ds T692 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T692 FROM T692 LIMIT 1;

theCharVar = 'Hello from P750';
dsply theCharVar;
P668();
P624();
P7();
return;