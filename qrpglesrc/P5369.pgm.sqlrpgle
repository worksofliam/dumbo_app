**free

ctl-opt dftactgrp(*no);

dcl-pi P5369;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1982.rpgleinc'
/copy 'qrpgleref/P5053.rpgleinc'
/copy 'qrpgleref/P1485.rpgleinc'

dcl-ds T976 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T976 FROM T976 LIMIT 1;

theCharVar = 'Hello from P5369';
dsply theCharVar;
P1982();
P5053();
P1485();
return;