**free

ctl-opt dftactgrp(*no);

dcl-pi P528;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P88.rpgleinc'
/copy 'qrpgleref/P449.rpgleinc'
/copy 'qrpgleref/P293.rpgleinc'

dcl-ds T212 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T212 FROM T212 LIMIT 1;

theCharVar = 'Hello from P528';
dsply theCharVar;
P88();
P449();
P293();
return;