**free

ctl-opt dftactgrp(*no);

dcl-pi P1125;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1098.rpgleinc'
/copy 'qrpgleref/P894.rpgleinc'
/copy 'qrpgleref/P1061.rpgleinc'

dcl-ds T782 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T782 FROM T782 LIMIT 1;

theCharVar = 'Hello from P1125';
dsply theCharVar;
P1098();
P894();
P1061();
return;