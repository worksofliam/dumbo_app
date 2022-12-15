**free

ctl-opt dftactgrp(*no);

dcl-pi P5391;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P98.rpgleinc'
/copy 'qrpgleref/P3004.rpgleinc'
/copy 'qrpgleref/P3992.rpgleinc'

dcl-ds T206 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T206 FROM T206 LIMIT 1;

theCharVar = 'Hello from P5391';
dsply theCharVar;
P98();
P3004();
P3992();
return;