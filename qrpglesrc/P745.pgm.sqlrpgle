**free

ctl-opt dftactgrp(*no);

dcl-pi P745;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P606.rpgleinc'
/copy 'qrpgleref/P576.rpgleinc'

dcl-ds T20 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T20 FROM T20 LIMIT 1;

theCharVar = 'Hello from P745';
dsply theCharVar;
P26();
P606();
P576();
return;