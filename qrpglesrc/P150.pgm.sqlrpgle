**free

ctl-opt dftactgrp(*no);

dcl-pi P150;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P147.rpgleinc'
/copy 'qrpgleref/P73.rpgleinc'
/copy 'qrpgleref/P63.rpgleinc'

dcl-ds T635 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T635 FROM T635 LIMIT 1;

theCharVar = 'Hello from P150';
dsply theCharVar;
P147();
P73();
P63();
return;