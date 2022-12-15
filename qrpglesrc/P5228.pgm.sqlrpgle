**free

ctl-opt dftactgrp(*no);

dcl-pi P5228;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2045.rpgleinc'
/copy 'qrpgleref/P4310.rpgleinc'
/copy 'qrpgleref/P48.rpgleinc'

dcl-ds T1672 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1672 FROM T1672 LIMIT 1;

theCharVar = 'Hello from P5228';
dsply theCharVar;
P2045();
P4310();
P48();
return;