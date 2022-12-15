**free

ctl-opt dftactgrp(*no);

dcl-pi P737;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P73.rpgleinc'
/copy 'qrpgleref/P345.rpgleinc'
/copy 'qrpgleref/P679.rpgleinc'

dcl-ds T186 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T186 FROM T186 LIMIT 1;

theCharVar = 'Hello from P737';
dsply theCharVar;
P73();
P345();
P679();
return;