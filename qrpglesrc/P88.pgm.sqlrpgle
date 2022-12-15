**free

ctl-opt dftactgrp(*no);

dcl-pi P88;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P85.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P16.rpgleinc'

dcl-ds T189 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T189 FROM T189 LIMIT 1;

theCharVar = 'Hello from P88';
dsply theCharVar;
P85();
P14();
P16();
return;