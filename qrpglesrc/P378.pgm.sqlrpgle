**free

ctl-opt dftactgrp(*no);

dcl-pi P378;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P46.rpgleinc'
/copy 'qrpgleref/P178.rpgleinc'
/copy 'qrpgleref/P146.rpgleinc'

dcl-ds T79 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T79 FROM T79 LIMIT 1;

theCharVar = 'Hello from P378';
dsply theCharVar;
P46();
P178();
P146();
return;