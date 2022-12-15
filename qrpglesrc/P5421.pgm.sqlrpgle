**free

ctl-opt dftactgrp(*no);

dcl-pi P5421;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1552.rpgleinc'
/copy 'qrpgleref/P5404.rpgleinc'
/copy 'qrpgleref/P1324.rpgleinc'

dcl-ds T110 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T110 FROM T110 LIMIT 1;

theCharVar = 'Hello from P5421';
dsply theCharVar;
P1552();
P5404();
P1324();
return;