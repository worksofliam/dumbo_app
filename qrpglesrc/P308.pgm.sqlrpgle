**free

ctl-opt dftactgrp(*no);

dcl-pi P308;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P174.rpgleinc'
/copy 'qrpgleref/P209.rpgleinc'
/copy 'qrpgleref/P271.rpgleinc'

dcl-ds T200 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T200 FROM T200 LIMIT 1;

theCharVar = 'Hello from P308';
dsply theCharVar;
P174();
P209();
P271();
return;